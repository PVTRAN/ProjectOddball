using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using Unity.VisualScripting.ReorderableList;
using UnityEngine;
using UnityEngine.UIElements;

public class enemycontroller : MonoBehaviour
{
    //move speed
    [SerializeField] private float Speed;

    //move
    [SerializeField] Animator animator;
    [SerializeField] LayerMask target;
    bool ground;
    //patrol
    [SerializeField] private float Dis;
    private bool Mr = true;
    [SerializeField] private Transform Gd;

    //Chase
    [SerializeField] private Transform Player;
    [SerializeField] private float Dr;
    [SerializeField] private float Sd;
    [SerializeField] private Transform Castpoint;

    private void Awake()
    {
        if (Player == null)
        {
            Player = GameManager.instance.Player.transform;
        }
        ground = true;
    }

    // Update is called once per frame
    void Update()
    {
        GroundCheck();
        if (canseeplayer(Dr) == false)
        {
            patrol();
        }
        else
        {
           // Chase();
        }

      
        
    }
    private void patrol()
    {
        animator.SetBool("IsWalking", true);
        if (Mr == true)
        {
            Vector3 Move = new Vector3(1,0, 0);
            //transform.Translate(Move * Speed * Time.deltaTime);

            transform.position += Move * Speed* Time.deltaTime;

        }
        else
        {
            Vector3 Move = new Vector3(-1, 0, 0);
            //transform.Translate(Vector2.left * Speed * Time.deltaTime);
            transform.position += Move * Speed * Time.deltaTime;
        }

        if (!ground)
        {
            if (Mr == true)
            {
                Mr = false;
                flip();
            }
            else
            {
                Mr = true;
                flip();
            }
        }

    }

    private void Chase()
    {
        RaycastHit2D GdInfo = Physics2D.Raycast(Gd.position, Vector2.down, Dis);
        if (transform.position.x < Player.position.x)
        {
            float temp = transform.position.x - Player.position.x;


            if (Mr == false)
            { 
                flip();
                Mr = true;
            }
            if (GdInfo.collider == true)
            {
                if (temp < Sd)
                {
                    animator.SetBool("IsWalking", false);
                    Vector3 Move = new Vector3(0, 0, 0);
                    transform.position += Move * Speed * Time.deltaTime;
                }
                else
                {
                    animator.SetBool("IsWalking", true);
                    Vector3 Move = new Vector3(1, 0, 0);
                    transform.position += Move * Speed * Time.deltaTime;
                }
                
            }
            else
            {
                animator.SetBool("IsWalking", false);
                Vector3 Move = new Vector3(0, 0, 0);
                transform.position += Move * Speed * Time.deltaTime;
            }
            




        }
        else if (transform.position.x > Player.position.x)
        {

            float temp = transform.position.x - Player.position.x;
            if (Mr == true)
            {
                flip();
                Mr = false;
            }

            if (GdInfo.collider == true)
            {
                if (temp < Sd)
                {
                    animator.SetBool("IsWalking", false);
                    Vector3 Move = new Vector3(0, 0, 0);
                    transform.position += Move * Speed * Time.deltaTime;
                }
                else
                {
                    animator.SetBool("IsWalking", true);
                    Vector3 Move = new Vector3(-1, 0, 0);
                    transform.position += Move * Speed * Time.deltaTime;
                }
               
            }
            else
            {
                animator.SetBool("IsWalking", false);
                Vector3 Move = new Vector3(0, 0, 0);
                transform.position += Move * Speed * Time.deltaTime;
            }
           



        }
    }
    private void flip()
    {
        Vector3 eulerAngles = transform.eulerAngles;
        eulerAngles.y *= -1;
        transform.eulerAngles = eulerAngles;

    }

    private bool canseeplayer(float distance)
    {
        float castdis = distance;
        bool temp = false;
        if (Mr == false)
        {
            castdis *= -1;
        }
        

        Vector2 endpos = Castpoint.position +Vector3.right * castdis;
        RaycastHit2D hit = Physics2D.Linecast(Castpoint.position, endpos, 1 << LayerMask.NameToLayer("Action"));
        if(hit.collider != null)
        {
            if (hit.collider.gameObject.CompareTag("Player"))
            {
                temp = true;
            }
            else
            {
                temp = false;
            }   
        }
        return temp;
    }

    void GroundCheck()
    {
        if (Physics.Raycast(Gd.position,-Gd.up,Dis,target))
        {
            ground = true;
        }
        else
        {
            ground = false;
        }
    }
}

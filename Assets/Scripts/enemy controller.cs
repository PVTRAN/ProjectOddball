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
    bool wall;
    //patrol
    [SerializeField] private float Dis;
    private bool Mr = true;
    [SerializeField] private Transform Gd;

    //Chase
    private bool SeePlayer;
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
        wall = false;
        SeePlayer = false;
    }

    // Update is called once per frame
    void Update()
    {
        GroundCheck();
        wallCheck();
        canseeplayer();
        if (!SeePlayer)
        {
            patrol();
        }
        else
        {
           Chase();
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

        if (!ground || wall)
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
        if (transform.position.x < Player.position.x)
        {
            float temp = transform.position.x - Player.position.x;


            if (Mr == false)
            { 
                flip();
                Mr = true;
            }
            if (ground)
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

            if (ground)
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

    private void canseeplayer()
    {
        Physics.Raycast(Gd.position, Gd.forward, out RaycastHit hit);
        if (hit.collider != null)
        {
            if (hit.collider.tag == "Player")
            {
                SeePlayer = true;
            }
            else
            {
                SeePlayer = false;
            }
        }
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
    void wallCheck()
    {
        if (Physics.Raycast(Gd.position, Gd.right, Dis, target))
        {
            wall = true;
        }
        else
        {
            wall = false;
        }
    }
}

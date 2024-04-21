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

    //patrol


    [SerializeField] private float Dis;
    private bool Mr = true;
    [SerializeField] private Transform Gd;

    //Chase
    [SerializeField] private Transform Player;
    [SerializeField] private float Dr;
    [SerializeField] private float Sd;
    [SerializeField] private Transform Castpoint;


   // private Animator anim;
    // Start is called before the first frame update
    void Start()
    {
 
    }

    // Update is called once per frame
    void Update()
    {
        if (canseeplayer(Dr) == false)
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
        if (Mr == true)
        {
            transform.Translate(Vector2.right * Speed * Time.deltaTime);
        }
        else
        {
            transform.Translate(Vector2.left * Speed * Time.deltaTime);
        }

        RaycastHit2D GdInfo = Physics2D.Raycast(Gd.position, Vector2.down, Dis);

        if (GdInfo.collider == false)
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
                    transform.Translate(Vector2.right * 0 * Time.deltaTime);
                }
                else
                {
                    transform.Translate(Vector2.right * Speed * Time.deltaTime);
                }
                
            }
            else
            {
                transform.Translate(Vector2.right * 0 * Time.deltaTime);
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
                    transform.Translate(Vector2.left * 0 * Time.deltaTime);
                }
                else
                {
                    transform.Translate(Vector2.left * Speed * Time.deltaTime);
                }
               
            }
            else
            {
                transform.Translate(Vector2.left * 0 * Time.deltaTime);
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

}

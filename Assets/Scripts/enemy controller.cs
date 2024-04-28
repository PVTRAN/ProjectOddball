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
        //changes between partol and chase methods
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
        //set move direction and speed
        if (Mr == true)
        {
            Vector3 Move = new Vector3(1,0, 0);
            transform.position += Move * Speed* Time.deltaTime;

        }
        else
        {
            Vector3 Move = new Vector3(-1, 0, 0);
            transform.position += Move * Speed * Time.deltaTime;
        }

        //detects floor
        RaycastHit2D GdInfo = Physics2D.Raycast(Gd.position, Vector2.down, Dis); 

        //detects wall beteween 2 points
        Vector2 endpos = Gd.position + Vector3.right;
        RaycastHit2D hit = Physics2D.Linecast(Castpoint.position, endpos, 1 << LayerMask.NameToLayer("Action"));

        // filps if there is a wall (ground) or if their is no floor (ground)
        if (GdInfo.collider == false || hit.collider.gameObject.CompareTag("Ground"))
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
        //detectes ground
        RaycastHit2D GdInfo = Physics2D.Raycast(Gd.position, Vector2.down, Dis);
        //dis to player
        float dis = Vector3.Distance(transform.position, Player.position);

        //move direction set in if/else
        Vector3 Move = new Vector3();

        //face direction and move direction set
        if (transform.position.x < Player.position.x)
        {

            Move = new Vector3(1, 0, 0);

            if (Mr == false)
            {
                flip();
                Mr = true;
            }
        }
        else if (transform.position.x > Player.position.x)
        {

            Move = new Vector3(-1, 0, 0);

            if (Mr == true)
            {
                flip();
                Mr = false;
            }


        }

        //speed set if ground located
        if (GdInfo.collider == true)
            {
                if (dis <= Sd)
                {
                    transform.position += Move * 0 * Time.deltaTime;
                }
                else
                {
                    
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
        

        Vector2 endpos = Castpoint.position + Vector3.right * castdis;
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

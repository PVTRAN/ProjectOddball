using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using Unity.VisualScripting.ReorderableList;
using UnityEngine;
using UnityEngine.UIElements;

public class enemycontroller : MonoBehaviour
{
    //root
    [SerializeField] private GameObject root;
    //move
    [SerializeField] private Animator animator;
    [SerializeField] LayerMask target;
    [SerializeField] private float Speed;
    private bool ground;
    private bool wall;
    //patrol
    [SerializeField] private float Dis;
    private bool Mr = true;
    [SerializeField] private Transform Gd;
    
    //Chase
    private bool SeePlayer;
    [SerializeField] private Transform Player;
    [SerializeField] private float Dr;
    [SerializeField] private float Sd;
    [SerializeField] private ParticleSystem attack;
    [SerializeField] private GameObject see;
    private bool ack = false;

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
        if(ack)
        {
            attack.Play();
            attack.GetComponent<BoxCollider>().enabled = true;
        }
        else
        {
            attack.Stop();
            attack.GetComponent<BoxCollider>().enabled = false;
        }
      
        
    }
    private void patrol()
    {
        ack = false;
        animator.SetBool("IsWalking", true);
        if (Mr == true)
        {
            Vector3 Move = new Vector3(1,0, 0);
            //transform.Translate(Move * Speed * Time.deltaTime);

            root.transform.position += Move * Speed* Time.deltaTime;

        }
        else
        {
            Vector3 Move = new Vector3(-1, 0, 0);
            //transform.Translate(Vector2.left * Speed * Time.deltaTime);
            root.transform.position += Move * Speed * Time.deltaTime;
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
        ack = true;
        if (root.transform.position.x < Player.position.x)
        {
            float temp = root.transform.position.x - Player.position.x;

            if (ground || !wall)
            {
                if (temp <= Sd)
                {
                    animator.SetBool("IsWalking", false);
                    Vector3 Move = new Vector3(0, 0, 0);
                    root.transform.position += Move * Speed * Time.deltaTime;
                    
                }
            }
        }
        else if (transform.position.x > Player.position.x)
        {

            float temp = root.transform.position.x - Player.position.x;

            if (ground || !wall)
            {
                if (temp < Sd)
                {
                    animator.SetBool("IsWalking", false);
                    Vector3 Move = new Vector3(0, 0, 0);
                    root.transform.position += Move * Speed * Time.deltaTime;
                }
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
        Physics.Raycast(see.transform.position, -see.transform.forward, out RaycastHit hit, Dr);
        
        if (hit.collider != null)
        {
            if (hit.collider.tag == "Player")
            {
                SeePlayer = true;
            }
        }
        else
        {
            SeePlayer = false;
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

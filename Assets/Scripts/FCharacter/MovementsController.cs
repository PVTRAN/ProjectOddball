using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovementsController : MonoBehaviour
{
    public float speed = 5.0f;
    public float jumpForce = 7.0f;
    
    //Movement script does not need to be here
    //public float health; 
    private bool isGrounded = true;
    
    private Rigidbody2D rb;
    
    //currently used for sprint that is not working
    //private float currentSpeed;
    //public float speedMultiplier = 10.0f;
    
    void Start()
    {
        //initialize the component
        rb = GetComponent<Rigidbody2D>();
        //health = 3; 
    }
    
    void Update()
    {
        HandleMovement();
    }
    
    void HandleMovement()
    {
        //horizontal movement
        float moveHorizontal = Input.GetAxis("Horizontal") * speed;  
        transform.position += new Vector3(moveHorizontal, 0, 0) * Time.deltaTime;
            
        //currently not working :: copied below 
        /*if (Input.GetKey(KeyCode.LeftShift))
        {
            currentSpeed = speed * speedMultiplier;
        }
        else
        {
            currentSpeed = speed;
        }*/
            
        if (Input.GetKeyDown(KeyCode.Space) && isGrounded)
        {
            rb.AddForce(new Vector2(0, jumpForce), ForceMode2D.Impulse);
            isGrounded = false;
        }
    }
    
    // Detect collision with the ground
    void OnCollisionEnter2D(Collision2D collision)
    {
        if (collision.collider.tag == "Ground")  
        {
            isGrounded = true;  
        }
    }
    
}

//---------------------------------------


// Was moved to a seperate class
/*void CallDamage()
        {
            health = health--;
        }
        void CallHealing()
        {
            health = health++;
        }*/
        

//Not working quite right, uneccessary right now
/*if (Input.GetKey(KeyCode.LeftShift))
    {
        currentSpeed = speed * speedMultiplier;
    }
    else
    {
        currentSpeed = speed;
    }*/
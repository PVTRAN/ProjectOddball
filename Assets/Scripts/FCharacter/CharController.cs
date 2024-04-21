//using System.Collections;
//using System.Collections.Generic;
using UnityEngine;

public class CharController : MonoBehaviour
{
        public float speed = 5.0f;   
        public float jumpForce = 7.0f;
        public float speedMultiplier = 10.0f;
        public float health; 
    
        private Rigidbody2D rb;
        private bool isGrounded = true;  
        private float currentSpeed;
    
        void Start()
        {
            //initialize the component
            rb = GetComponent<Rigidbody2D>();
            health = 3; 
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
            
            
            if (Input.GetKey(KeyCode.LeftShift))
            {
                currentSpeed = speed * speedMultiplier;  
            }
            else
            {
                currentSpeed = speed;  
            }
            
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
        void CallDamage()
        {
            health = health--; 
        
        }

        void CallHealing()
        {
            health = health++;
        
        }


        
        
    
}

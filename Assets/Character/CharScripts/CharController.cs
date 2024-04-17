//using System.Collections;
//using System.Collections.Generic;
using UnityEngine;

public class CharController : MonoBehaviour
{
        public float speed = 5.0f;   
        public float jumpForce = 7.0f;
        public float speedMultiplier = 10.0f;
    
        private Rigidbody2D rb;
        private bool isGrounded = true;  
        private float currentSpeed;
    
        void Start()
        {
            rb = GetComponent<Rigidbody2D>();  
            currentSpeed = speed; 
        }
        
        void Jump()
        {
            rb.AddForce(new Vector2(0, jumpForce), ForceMode2D.Impulse);  // Add a vertical force for the jump
            isGrounded = false;  // Set grounded to false as the character is now jumping
        }
    
        void Update()
        {
            Move();
            HandleMovement();
            if (Input.GetKeyDown(KeyCode.Space) && isGrounded)
            {
                Jump();
            }
        }

        void HandleMovement()
        {
            
            //------------------------------------
            if (Input.GetKey(KeyCode.LeftShift))
            {
                currentSpeed = speed * speedMultiplier;  // Increase speed when shift is held
            }
            else
            {
                currentSpeed = speed;  // Reset to normal speed when shift is not held
            }
    
            
        }
        
        void Move()
        {
            float moveHorizontal = Input.GetAxis("Horizontal") * speed;  // Get horizontal input to move left or right
            transform.position += new Vector3(moveHorizontal, 0, 0) * Time.deltaTime;  // Move the character
        }
    
        
    
        // Detect collision with the ground
        void OnCollisionEnter2D(Collision2D collision)
        {
            if (collision.collider.tag == "Ground")  // Check if the object collided with has the tag "Ground"
            {
                isGrounded = true;  // Set grounded to true as the character is on the ground
            }
        }
    
    
}

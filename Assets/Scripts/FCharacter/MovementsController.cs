using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovementsController : MonoBehaviour
{
    public float speed = 5.0f;
    //---------------------------
    public float jumpForce = 7.0f;
    public float normalJumpForce;
    //---------------------------
    public float JumpboostEndTime = 0; // how long boost will be active for 
    //---------------------------
    private bool isGrounded = true;
    //---------------------------
    private Rigidbody2D rb;
    //---------------------------
    
    void Start()
    {
        //initialize the component
        rb = GetComponent<Rigidbody2D>();
        //health = 3; 
    }
    
    void Update()
    {
        HorizontalMovementHandler();
        BaseJumpHandler();
        JumpBoostHandler();
        
    }
    
    void HorizontalMovementHandler()
    {
        float moveHorizontal = Input.GetAxis("Horizontal") * speed;  
        transform.position += new Vector3(moveHorizontal, 0, 0) * Time.deltaTime;
    }
    
    void BaseJumpHandler()
    {
        if (Input.GetKeyDown(KeyCode.Space) && isGrounded)
        {
            rb.AddForce(new Vector2(0, jumpForce), ForceMode2D.Impulse);
            isGrounded = false;
        }
    }
    
    void JumpBoostHandler()
    {
        if (Time.time > JumpboostEndTime) 
        {
            jumpForce = normalJumpForce; // jumpForce set back to normal
        }
    }
    public void ActivateJumpBoost(float boost, float duration)
    {
        jumpForce = boost; 
        // when activated, duration will add a boost to Time.time - eventually
        // Time.time will catch up and set jumpForce back to normalJumpForce as showcase above
        JumpboostEndTime = Time.time + duration; 
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




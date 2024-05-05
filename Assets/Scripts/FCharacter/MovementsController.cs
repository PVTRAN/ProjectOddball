using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovementsController : MonoBehaviour
{
    public float speed = 5.0f;
    Vector3 start;
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
   // [SerializeField] private Animator move;
    void Start()
    {
        //initialize the component
        rb = GetComponent<Rigidbody2D>();
        start = transform.position;
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
        if (start != transform.position)
        {
           // move.SetBool("IsWalking", true);
            start = transform.position;
        }
        //else
        //{
        //    move.SetBool("IsWalking", false);
        //}

        
    }
    
    void BaseJumpHandler()
    {
        if (Input.GetKeyDown(KeyCode.Space) && isGrounded)
        {
            rb.AddForce(new Vector3(0, jumpForce), ForceMode2D.Impulse);
            isGrounded = false;
            //move.SetBool("IsJumping", true);
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
    void OnCollisionEnter3D(Collision2D collision)
    {
        if (collision.collider.tag == "Ground")  
        {
            isGrounded = true;
            //move.SetBool("IsJumping", false);
        }
    }
    
}

//---------------------------------------
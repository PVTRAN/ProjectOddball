using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    public float speed = 5.0f;

    //---------------------------
    public float jumpForce = 7.0f;

    //Movement script does not need to be here
    //public float health; 
    public float normalJumpForce;

    //---------------------------
    public float JumpboostEndTime = 0; // how long boost will be active for 

    //---------------------------
    private bool isGrounded = true;

    //---------------------------
    private Rigidbody rb;

    //currently used for sprint that is not working
    //private float currentSpeed;
    //public float speedMultiplier = 10.0f;
    //---------------------------

    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }


    void Update()
    {

        HorizontalMovementHandler();
        LateralMovementHandler();
        BaseJumpHandler();
        JumpBoostHandler();

    }

    void HorizontalMovementHandler()
    {
        //horizontal movement
        float moveHorizontal = Input.GetAxis("Horizontal") * speed;
        transform.position += new Vector3(moveHorizontal, 0, 0) * Time.deltaTime;
    }

    void LateralMovementHandler()
    {
        float moveLaterally = Input.GetAxis("Vertical") * speed;
        transform.position += new Vector3(0, 0, moveLaterally) * Time.deltaTime;
    }
    
    void BaseJumpHandler()
    {
        if (Input.GetKeyDown(KeyCode.Space) && isGrounded)
        {
            rb.AddForce(new Vector3(0, jumpForce), ForceMode.Impulse);
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
    
    void OnCollisionEnter(Collision collision)
    {
        //I am ascending
        if (collision.gameObject.CompareTag("Ground")) // rider suggesting "CompareTag" 
        {
            isGrounded = true;  
        }
    }
    public void ActivateJumpBoost(float boost, float duration)
    {
        jumpForce = boost;
        // when activated, duration will add a boost to Time.time - eventually
        // Time.time will catch up and set jumpForce back to normalJumpForce as showcase above
        JumpboostEndTime = Time.time + duration;
    }

}
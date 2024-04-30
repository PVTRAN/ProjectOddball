using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Lasso : MonoBehaviour
{ 
    public PlayerLasso pLasso;
    public Rigidbody2D rb;
    public LineRenderer lr;
    private Transform playerTransform;

    float timerTick = 0.0f;

    private Vector2 Throw_Vector;
    private Vector3 VelocityZero = Vector3.zero;

    // Start is called before the first frame update

    private void Awake()
    {
        if(pLasso == null)
            pLasso = GameManager.instance.Player.GetComponent<PlayerLasso>();
        if(playerTransform == null)
            playerTransform = GameManager.instance.transform;
        if(rb == null)
            rb = this.GetComponent<Rigidbody2D>();
        if(lr == null)
          lr = this.GetComponent<LineRenderer>();

    }


    // Update is called once per frame
    void Update()
    {
        if(timerTick < 10.0f)
        {
            timerTick += Time.deltaTime;
        }
        else
        {
            FallReset();
        }
    }

      /*****************************************/
    private void OnMouseDown()
    {
        CalculateThrowVector();
        EnableDirectionLine();
    }
    private void OnMouseDrag()
    {
        CalculateThrowVector();
        EnableDirectionLine();
    }
    /************************************/

    void CalculateThrowVector()
    {
        Vector3 mousePos = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        mousePos.z = 0;
        Vector2 Distance = mousePos - this.transform.position;

        Throw_Vector = Distance.normalized * 100;

    }
    void Throw()
    {
        rb.AddForce(Throw_Vector);
    }

    void EnableDirectionLine()
    {
        lr.positionCount = 2;
        lr.SetPosition(0,Vector3.zero);
        lr.SetPosition(1,Throw_Vector.normalized/2);
        lr.enabled = true;
    }
    void DisableDirectionLine()
    {
        lr.enabled = false;
    }

    private void OnCollisionEnter2D(Collision2D collision)
    {
        switch (collision.collider.tag)
        {
            case "Creature":
                GameManager.instance.updateCapturedCreature(collision.gameObject);
                collision.gameObject.SetActive(false);
                break;
            case "Ground":
                pLasso.Retrieve = true;
                break;
            case "Player":
                pLasso.Retrieve = true;
                break;

        }
    }

    private void OnCollisionEnter(Collision collision)
    {
         switch (collision.collider.tag)
        {
            case "Creature":
                GameManager.instance.updateCapturedCreature(collision.gameObject);
                collision.gameObject.SetActive(false);
                break;
            case "Ground":
                pLasso.Retrieve = true;
                break;
            case "Player":
                pLasso.Retrieve = true;
                break;

        }
    }

    private IEnumerator FallReset()
    {
        yield return new WaitForSeconds(10.0f);
        pLasso.Retrieve = true;
    }
    // code be clean - j
}

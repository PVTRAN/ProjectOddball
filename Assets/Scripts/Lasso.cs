using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEditor.Tilemaps;
using UnityEngine;

public class Lasso : MonoBehaviour
{
    public GameObject lasso;
    public GameObject player;

    public Rigidbody2D rb;

    private Vector3 Throw_Vector;
    private Vector3 VelocityZero = Vector3.zero;

    private bool Retrieve = false;
    [SerializeField] private GameObject[] Captured = new GameObject[2];
    // Start is called before the first frame update

    private void Awake()
    {
        if(this.GetComponent<Rigidbody2D>() == null)
            rb = this.GetComponent<Rigidbody2D>();

    }
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        if(lasso.activeSelf)
            lasso.transform.Rotate(2, 0, 0);
    }
    private void OnMouseDown()
    {
        lasso.SetActive(true);
        CalculateThrow();
    }
    private void OnMouseUp()
    {
        Throw(Throw_Vector);
    }
    private void OnMouseDrag()
    {
        CalculateThrow();
    }
    private void OnCollisionEnter2D(Collision2D collision)
    {
        switch (collision.collider.tag)
        {
            case "Creature":
                lasso.transform.position = player.transform.position;
                if (collision.gameObject != Captured[0])
                    Captured[0] = collision.gameObject;
                else
                    Captured[1] = collision.gameObject;
                break;
            case "Ground":
                lasso.transform.position = player.transform.position;
                break;
            case "Player":
                lasso.SetActive(false);
                break;

        }
    }
    // code be clean - j 
    
    void CalculateThrow()
    {
        Vector3 mousePos = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        Vector2 Distance = mousePos - this.transform.position;

        Throw_Vector = -Distance.normalized * 100;
    }

    void Throw(Vector3 ThrowVector)
    {
        rb.AddForce(ThrowVector);
    }

    void MoveBack()
    {
        if (Vector3.Distance(lasso.transform.position, player.transform.position) > 0 && Retrieve)
        {
            lasso.transform.position = Vector3.SmoothDamp(lasso.transform.position, player.transform.position, ref VelocityZero, Time.deltaTime * 0.1f);
        }

        if(Retrieve && Vector3.Distance(lasso.transform.position, player.transform.position) == 0)
        {
            Retrieve = false;
        }
    }

}

using System.Collections;
using System.Collections.Generic;
using UnityEditor.Tilemaps;
using UnityEngine;

public class Lasso : MonoBehaviour
{
    public GameObject Object_Lasso;
    public GameObject Player;

    public Rigidbody2D Lasso_Rb;

    private Vector3 Throw_Vector;
    // Start is called before the first frame update

    private void Awake()
    {
        if(this.GetComponent<Rigidbody2D>() == null)
            Lasso_Rb = this.GetComponent<Rigidbody2D>();

    }
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        if(Object_Lasso.activeSelf)
            Object_Lasso.transform.Rotate(2, 0, 0);
    }
    private void OnMouseDown()
    {
        Object_Lasso.SetActive(true);
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

    void CalculateThrow()
    {
        Vector3 mousePos = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        Vector2 Distance = mousePos - this.transform.position;

        Throw_Vector = -Distance.normalized * 100;
    }

    void Throw(Vector3 ThrowVector)
    {
        Lasso_Rb.AddForce(ThrowVector);
    }

    private void OnCollisionEnter2D(Collision2D collision)
    {
        switch(collision.collider.tag)
        {
            case "Creature":
                Object_Lasso.transform.position = Player.transform.position;
                Object_Lasso.SetActive(false);
                break;
            case "Ground":
                Object_Lasso.transform.position = Player.transform.position;
                Object_Lasso.SetActive(false); 
                break;
                
        }
    }
}

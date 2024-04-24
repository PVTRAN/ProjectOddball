using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEditor.Tilemaps;
using UnityEngine;

public class PlayerLasso : MonoBehaviour
{
    public GameObject objLasso;

    public Rigidbody2D rb;
    public GameObject player;

    private Vector2 Throw_Vector;
    private Vector3 VelocityZero = Vector3.zero;

    public bool Retrieve { get; set; }
    // Start is called before the first frame update

    private void Awake()
    {
        if(objLasso.GetComponent<Rigidbody2D>() == null)
            rb = objLasso.GetComponent<Rigidbody2D>();

        if(player == null)
            player = GameManager.instance.Player;
    }
    // Update is called once per frame
    void Update()
    {
        if(objLasso.activeSelf)
        {
            objLasso.transform.Rotate(0, 0, 2);
        }

        if(Input.GetKeyDown(KeyCode.R))
        {
            Retrieve = true;
        }

        if(Retrieve)
        {
            MoveBack();
        }

        if(Input.GetKeyDown(KeyCode.Mouse0))
        {
            Debug.Log("Mouse Location" + Camera.main.ScreenToWorldPoint(Input.mousePosition));
            Debug.Log("Player Location" + this.transform.position);
        }

    }

    /*****************************************/
    private void OnMouseDown()
    {
        CalculateThrow();
    }
    private void OnMouseUp()
    {
        objLasso.SetActive(true);
        Throw(Throw_Vector);
    }
    private void OnMouseDrag()
    {
        CalculateThrow();
    }
    /************************************/

    void CalculateThrow()
    {
        Vector3 mousePos = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        mousePos.z = 0;
        Vector2 Distance = mousePos - this.transform.position;

        Throw_Vector = -Distance.normalized * 100;

    }

    void Throw(Vector3 ThrowVector)
    {
        rb.AddForce(ThrowVector * 5);
    }

    void MoveBack()
    {
        if (Vector3.Distance(objLasso.transform.position, player.transform.position) > 0 && Retrieve)
        {
            objLasso.transform.position = Vector3.SmoothDamp(objLasso.transform.position, player.transform.position, ref VelocityZero, Time.deltaTime * 0.001f);
        }

        if(Retrieve && Vector3.Distance(objLasso.transform.position, player.transform.position) <= 0.25)
        {
            Vector3 forward = new Vector3(2,0,0);
            objLasso.transform.position += forward;
            Retrieve = false;
            objLasso.SetActive(false);
        }
    }



}

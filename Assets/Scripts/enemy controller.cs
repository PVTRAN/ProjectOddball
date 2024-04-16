using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class enemycontroller : MonoBehaviour
{
    public GameObject PointA;
    public GameObject PointB;
    private Rigidbody2D Rb;
    private Transform CurrentPos;
    public float speed;
   // private Animator anim;
    // Start is called before the first frame update
    void Start()
    {
        Rb = GetComponent<Rigidbody2D>();
        CurrentPos = PointB.transform;
    }

    // Update is called once per frame
    void Update()
    {
        Vector2 pos = CurrentPos.position - transform.position;
        if(CurrentPos == PointB.transform)
        {
            Rb.velocity = new Vector2(speed, 0);
        }
        else
        {
            Rb.velocity = new Vector2(-speed, 0);
        }

        if(Vector2.Distance(transform.position, CurrentPos.position) < 0.5f && CurrentPos == PointB.transform)
        {
            flip();
            CurrentPos = PointA.transform;
        }
        if (Vector2.Distance(transform.position, CurrentPos.position) < 0.5f && CurrentPos == PointA.transform)
        {
            flip();
            CurrentPos = PointB.transform;
        }
    }

    private void flip()
    {
        Vector3 localscale = transform.localScale;
        localscale.y *= -1;
        transform.localScale = localscale;

    }
    private void OnDrawGizmos()
    {
        Gizmos.DrawWireSphere(PointA.transform.position, 0.5f);
        Gizmos.DrawWireSphere(PointB.transform.position, 0.5f);
        Gizmos.DrawLine(PointA.transform.position, PointB.transform.position);
    }
}

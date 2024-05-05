using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Lasso : MonoBehaviour
{ 
    public PlayerLasso pLasso;
    public Rigidbody rb;
    private Transform playerTransform;

    public float timerTick = 0.0f;

    private Vector2 Throw_Vector;

    // Start is called before the first frame update

    private void Awake()
    { 
        if(playerTransform == null)
            playerTransform = GameManager.instance.Player.transform;
        if(rb == null)
            rb = this.GetComponent<Rigidbody>();

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
           StartCoroutine(FallReset());
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

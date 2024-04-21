using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Lasso : MonoBehaviour
{
    public PlayerLasso pLasso;

    // Start is called before the first frame update

    private void Awake()
    {
        if(pLasso == null)
            pLasso = GameManager.instance.Player.GetComponent<PlayerLasso>();
    }


    // Update is called once per frame
    void Update()
    {
        
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

        }
    }
    // code be clean - j
}

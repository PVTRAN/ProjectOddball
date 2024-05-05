using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindPower : MonoBehaviour
{
    // Pain, checkout my lasso
        public float jumpBoost = 20f;
        public float duration = 10f;

        private void OnCollisionEnter(Collision collision)
        {
            if (collision.gameObject.CompareTag("Player"))
            {
                Movement movementsController = collision.gameObject.GetComponent<Movement>();
                if (movementsController != null)
                {
                    Debug.Log("Jump activated");
                    movementsController.ActivateJumpBoost(jumpBoost,duration);
                    //Destroy(gameObject); 
                }
            }
        }
}



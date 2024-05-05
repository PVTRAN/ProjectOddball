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
                MovementsController movementsController = collision.gameObject.GetComponent<MovementsController>();
                if (movementsController != null)
                {
                    Debug.Log("Jump activated");
                    movementsController.ActivateJumpBoost(jumpBoost,duration);
                    //Destroy(gameObject); 
                }
            }
        }
}



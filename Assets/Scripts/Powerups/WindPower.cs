using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindPower : MonoBehaviour
{
        public float jumpBoost = 20f;
        public float duration = 10f;

        private void OnCollisionEnter2D(Collision2D other)
        {
            if (other.gameObject.CompareTag("Player"))
            {
                MovementsController movementsController = other.gameObject.GetComponent<MovementsController>();
                if (movementsController != null)
                {
                    Debug.Log("Jump activated");
                    movementsController.ActivateJumpBoost(jumpBoost,duration);
                    //Destroy(gameObject); 
                }
            }
        }
}



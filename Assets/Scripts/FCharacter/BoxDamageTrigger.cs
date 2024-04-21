using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoxDamageTrigger : MonoBehaviour
{
    public float damageAmount = 10f;
    
    //CustomComponent MyCompnent 

    private void OnTriggerEnter2D(Collider2D other)
    {
        Health health = other.GetComponent<Health>();
        if (health != null)
        {
            health.TakeDamage(damageAmount);
        }
    }
}

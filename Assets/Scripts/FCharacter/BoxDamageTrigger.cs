using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoxDamageTrigger : MonoBehaviour
{
    public float damageAmount = 10f;
    
    //CustomComponent MyCompnent 
    
    private void OnCollisionEnter2D(Collision2D other)
    {
        
        // moved "other.CompareTag" 
        
        //If the player dude collides 
        if (other.gameObject.CompareTag("Player"))
        {
            //getting my health component
            //this is the format 
            Health health = other.gameObject.GetComponent<Health>();
            if (health != null)
            {
                health.TakeDamage(damageAmount);
                Debug.Log("hit"); 
            }
        }
    }

   
}


    
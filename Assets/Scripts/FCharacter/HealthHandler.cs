using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Health : MonoBehaviour
{
    //Keeping this public   
    public float health = 100f;
    
    public void TakeDamage(float damageAmount)
    {
        health -= damageAmount;
        if (health <= 0)
        {
            Die();
        }
    }
    
    //This is not implemented yet
    public void Heal(float healAmount)
    {
        health += healAmount;
        
        // Unity method that caps the health at 100 
        health = Mathf.Min(health, 100f); 
    }
    private void Die()
    {
        // We gettin' jank boys. Open to suggestions
        //
        gameObject.SetActive(false);
    }
}

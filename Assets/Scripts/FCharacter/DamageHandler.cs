using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DamageHandler : MonoBehaviour
{
    //I need to subtract myself with a function
    //I need to add myself with another function

    public float health; 
    
    void Start()
    {
        // Player has 3 hearts. Hearts are potentially  
        health = 6; 
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void CallDamage()
    {
        health = health--; 
        
    }

    void CallHealing()
    {
        health = health++;
        
    }
    
    
    
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class enemy_damage : MonoBehaviour
{
    [SerializeField] float Damage;
    [SerializeField] float Timer;
    private bool takeDamage = true;
    
    private void OnTriggerStay(Collider other)
    {
      
            if (other.gameObject.tag == "Player")
            {

                Health player = other.GetComponent<Health>();
                StartCoroutine(TakeDamage(Timer, player));
            }
        
    }

    IEnumerator TakeDamage(float time, Health player)
    {
        if (takeDamage)
        {
            player.TakeDamage(Damage);
            takeDamage = !takeDamage;
            yield return new WaitForSeconds(time);
            takeDamage = !takeDamage;
        }
        
    }

}

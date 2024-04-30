using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class enemy_damage : MonoBehaviour
{
    [SerializeField] float Damage;
    [SerializeField] float Timer;
    [SerializeField] ParticleSystem fire;
    private bool takeDamage = true;
    
    private void OnTriggerStay2D(Collider2D other)
    {
        if (fire.gameObject.active == true)
        {
            if (other.gameObject.tag == "Player")
            {

                Health player = other.GetComponent<Health>();
                StartCoroutine(TakeDamage(Timer, player));
            }
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

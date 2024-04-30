using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class player_reset : MonoBehaviour
{
    [SerializeField] private Vector3 SpawnPoint;
    //called before start
    void Awake()
    {
        SpawnPoint = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.name == "Respawn")
        {
            transform.position = SpawnPoint;
        }
        if (collision.gameObject.name == "CheckPoint")
        {
            SpawnPoint = transform.position;
            collision.enabled = false;
        }
    }
}

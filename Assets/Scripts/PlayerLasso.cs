using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using Unity.VisualScripting;
using UnityEditor.Tilemaps;
using UnityEngine;
using UnityEngine.UIElements;
using Debug = UnityEngine.Debug;

public class PlayerLasso : MonoBehaviour
{
    public GameObject objLasso;

    public Rigidbody2D rb;
    public LineRenderer lr;
    public GameObject player;

    private GameState gState;

    public bool Retrieve { get; set; }
    // Start is called before the first frame update

    private void Awake()
    {
        if(objLasso.GetComponent<Rigidbody2D>() == null)
            rb = objLasso.GetComponent<Rigidbody2D>();

        if(player == null)
            player = GameManager.instance.Player;
        if(lr == null)
            lr = this.GetComponent<LineRenderer>();

        GameManager.OnGameStateChanged += GameManagerOnStateChanged;
    }


    // Update is called once per frame
    void Update()
    {
        if (gState == GameState.PlayState)
        {

            if(Retrieve)
            {
                objLasso.transform.position = Vector3.SmoothDamp(objLasso.transform.position, player.transform.position, ref VelocityZero, Time.deltaTime * 0.1f);
            }

            if(Mathf.Abs(Vector3.Distance(objLasso.transform.position, player.transform.position)) < 0.5f)
            {
                Vector3 forward = new Vector3(2, 0, 0);
                objLasso.transform.position += forward;
                Retrieve = false;
                objLasso.SetActive(false);
            }
           
        }
        else if (gState == GameState.DeathState)
        {

        }
    }

  

    /***************************************/
    private void GameManagerOnStateChanged(GameState state)
    {
        gState = state;
    }
    private void OnDestroy()
    {
        GameManager.OnGameStateChanged -= GameManagerOnStateChanged;
    }


}

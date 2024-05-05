using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using Unity.VisualScripting;
using UnityEditor;
using UnityEditor.Tilemaps;
using UnityEngine;
using UnityEngine.UIElements;
using Debug = UnityEngine.Debug;

public class PlayerLasso : MonoBehaviour
{
    public GameObject objLasso;
    public Rigidbody LassoRB;
    public Transform  LassoLocation;
    public Transform  LassoBackLocation;
    public GameObject player;

    private GameState gState;

    public bool Retrieve { get; set; }
    private Vector3 VelocityZero = Vector3.zero;
    private bool FunctionDoOnce = false;
    // Start is called before the first frame update

    private void Awake()
    {

        if(player == null)
            player = GameObject.FindGameObjectWithTag("Player");

        if (LassoRB == null)
        {
            LassoRB = objLasso.GetComponent<Rigidbody>();
        }

        GameManager.instance.Player = player;

        GameManager.OnGameStateChanged += GameManagerOnStateChanged;
        gState = GameManager.instance.CheckGameState();
        Retrieve = false;
    }


    // Update is called once per frame
    void Update()
    {
        switch(gState)
        {
            case GameState.PlayState:
                if (Input.GetKeyDown(KeyCode.F))
                {
                    objLasso.SetActive(true);
                }
                if (Input.GetKey(KeyCode.F))
                {
                    objLasso.transform.position = LassoLocation.position;
                }
                if (Input.GetKeyUp(KeyCode.F))
                {
                    LassoRB.AddForce(new Vector3(1.0f, 0.5f, 0) * 3, ForceMode.Impulse);
                }
                if (Input.GetKeyDown(KeyCode.R))
                {
                    Retrieve = true;
                }

                if (Retrieve)
                {
                    if (Mathf.Abs(Vector3.Distance(objLasso.transform.position, LassoBackLocation.position)) > 0.25f)
                    {
                        objLasso.transform.position = Vector3.SmoothDamp(objLasso.transform.position, LassoBackLocation.position, ref VelocityZero, Time.deltaTime * 0.1f);
                    }
                    else
                    {
                        objLasso.transform.position = LassoLocation.position;
                        LassoRB.velocity = VelocityZero;
                        objLasso.SetActive(false);
                        Retrieve = false;
                    }
                }
                break;
            case GameState.PauseState:
                break;
            case GameState.DeathState:
                break;
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

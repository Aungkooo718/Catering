package com.exercise.model;

import javax.websocket.Endpoint;
import javax.websocket.EndpointConfig;
import javax.websocket.MessageHandler;
import javax.websocket.Session;
import javax.websocket.CloseReason;
import java.io.IOException;

public class ChatEndpoint extends Endpoint {
    @Override
    public void onOpen(Session session, EndpointConfig config) {
        session.addMessageHandler(new MessageHandler.Whole<String>() {
            @Override
            public void onMessage(String message) {
                // Handle incoming message
                System.out.println("Received message: " + message);
                // Process the message and send response to appropriate users
                // ...
            }
        });
    }

    @Override
    public void onClose(Session session, CloseReason closeReason) {
        // Handle connection closure
        System.out.println("Connection closed: " + closeReason.getReasonPhrase());
    }
}

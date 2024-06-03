//
//  ContentViewModel.swift
//  instagramClone
//
//  Created by ŞEVVAL on 21.05.2024.
//

import Foundation
import Firebase
import Combine


class ContentViewModel: ObservableObject{
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        setupSubscribe()
    }
    
    func setupSubscribe(){
        
        service.$userSession.sink{ [weak self] userSession in
            self?.userSession = userSession
            
        }
        .store(in: &cancellables)
        
        service.$currentUser.sink{ [weak self] currentUser in
            self?.currentUser = currentUser
            
        }
        .store(in: &cancellables)
    }
    
}

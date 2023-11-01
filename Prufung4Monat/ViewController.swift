//
//  ViewController.swift
//  Prufung4Monat
//
//  Created by Maksat Edil on 1/11/23.
//

import UIKit

class ViewController: UIViewController{
    var OpenScreen: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 430, height: 888)
        
        return view
    }()
    var Arrow: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "Arrow")
        view.contentMode = .scaleAspectFit
        view.frame = CGRect(x: 0, y: 0, width: 28, height: 28)
        return view
    }()
    
    var CreateLbl: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 28, weight: .bold)
        view.text = "Create New Password 🔐"
        
        
        return view
    }()
    
    var EnterLbl: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.text = "Enter your new password. If you forget it, then you have to do forgot password."
        view.numberOfLines = 0
        view.lineBreakMode = .byWordWrapping
        view.font = .systemFont(ofSize: 16, weight: .thin)
        return view
    }()
    
    var PassLbl: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.text = "Password"
        view.font = .systemFont(ofSize: 16, weight: .bold)
        
        return view
    }()
    
    var PassTf: UITextField = {
        var view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = UIColor(red: 0.129, green: 0.129, blue: 0.129, alpha: 1)
        view.placeholder = "●●●●●●●●●●●"
        view.font = .systemFont(ofSize: 14)
        return view
    }()
    
    var eyeBtn: UIButton = {
        var view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let eyeImage = UIImage(systemName: "eye.fill")
        view.tintColor = .orange
        view.setImage (eyeImage, for: .normal)
        return view
    }()
    private let divider = UIView()
    
    var ConLbl: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.text = "Confirm Password"
        view.font = .systemFont(ofSize: 16, weight: .bold)
        
        return view
    }()
    
    var PassTf2: UITextField = {
        var view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = UIColor(red: 0.129, green: 0.129, blue: 0.129, alpha: 1)
        view.placeholder = "●●●●●●●●●●●"
        view.font = .systemFont(ofSize: 14)
        return view
    }()
    private let divider2 = UIView()
    
    var BoxBtn: UIButton = {
        var view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.orange.cgColor
        let checkmarkImage = UIImage(systemName: "checkmark.square.fill")
        view.tintColor = .orange
        view.setImage(checkmarkImage, for: .selected)
        return view
    }()
    var RemLbl: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.text = "Remember me"
        view.font = .systemFont(ofSize: 14, weight: .thin)
        
        return view
    }()
    var eyeBtn2: UIButton = {
        var view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let eyeImage = UIImage(systemName: "eye.fill")
        view.tintColor = .orange
        view.setImage (eyeImage, for: .normal)
        return view
    }()
    var ConBtn: UIButton = {
        var view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitleColor(UIColor.white, for: .normal)
        view.setTitle("Continue", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        view.backgroundColor = .orange
        view.layer.cornerRadius = 20
        return view
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(OpenScreen)
        setUpConstraintsForOpenScreen()
        
        view.addSubview(Arrow)
        setUpConstraintsForArrow()
        
        view.addSubview(CreateLbl)
        setUpConstraintsForCreateLbl()
        
        view.addSubview(EnterLbl)
        setUpConstraintsForEnterLbl()
        
        view.addSubview(PassLbl)
        setUpConstraintsForPassLbl()
        
        view.addSubview(PassTf)
        setUpConstraintsForPassTf()
        
        view.addSubview(eyeBtn)
        setUpConstraintsForeyeBtn()
        
        view.addSubview(ConLbl)
        setUpConstraintsForConLbl()
        
        view.addSubview(divider)
        setupConstraintsForDivider()
        
        view.addSubview(PassTf2)
        setUpConstraintsForPassTf2()
        
        view.addSubview(divider2)
        setupConstraintsForDivider2()
        
        view.addSubview(BoxBtn)
        setUpConstraintsForBoxBtn()
        
        view.addSubview(RemLbl)
        setUpConstraintsForRemLbl()
        
        view.addSubview(eyeBtn2)
        setUpConstraintsForeyeBtn2()
        
        view.addSubview(ConBtn)
        setUpConstraintsConBtn()
    }
    private func setUpConstraintsForOpenScreen(){
        OpenScreen.translatesAutoresizingMaskIntoConstraints = false
        OpenScreen.heightAnchor.constraint(equalToConstant: 0).isActive = true
        OpenScreen.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        OpenScreen.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        OpenScreen.topAnchor.constraint(equalTo: view.topAnchor, constant: 44).isActive = true
    }
    private func setUpConstraintsForArrow(){
        Arrow.widthAnchor.constraint(equalToConstant: 28).isActive = true
        Arrow.heightAnchor.constraint(equalToConstant: 28).isActive = true
        Arrow.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        Arrow.topAnchor.constraint(equalTo: OpenScreen.topAnchor, constant: 16).isActive = true
    }
    private func setUpConstraintsForCreateLbl(){
        CreateLbl.widthAnchor.constraint(equalToConstant: 360).isActive = true
        CreateLbl.heightAnchor.constraint(equalToConstant: 51).isActive = true
        CreateLbl.leftAnchor.constraint(equalTo: OpenScreen.leftAnchor).isActive = true
        CreateLbl.rightAnchor.constraint(equalTo: OpenScreen.rightAnchor).isActive = true
        CreateLbl.topAnchor.constraint(equalTo: Arrow.bottomAnchor, constant: 34).isActive = true
    }
    private func setUpConstraintsForEnterLbl(){
        EnterLbl.widthAnchor.constraint(equalToConstant: 350).isActive = true
        EnterLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        EnterLbl.leftAnchor.constraint(equalTo: OpenScreen.leftAnchor).isActive = true
        EnterLbl.rightAnchor.constraint(equalTo: OpenScreen.rightAnchor).isActive = true
        EnterLbl.topAnchor.constraint(equalTo: CreateLbl.bottomAnchor, constant: 12).isActive = true
        
    }
    private func setUpConstraintsForPassLbl(){
        PassLbl.widthAnchor.constraint(equalToConstant: 382).isActive = true
        PassLbl.heightAnchor.constraint(equalToConstant: 22).isActive = true
        PassLbl.topAnchor.constraint(equalTo: EnterLbl.bottomAnchor, constant: 32).isActive = true
        PassLbl.leftAnchor.constraint(equalTo: OpenScreen.leftAnchor).isActive = true
        
    }
    
    private func setUpConstraintsForPassTf(){
        PassTf.widthAnchor.constraint(equalToConstant: 342).isActive = true
        PassTf.heightAnchor.constraint(equalToConstant: 32).isActive = true
        PassTf.topAnchor.constraint(equalTo: PassLbl.bottomAnchor, constant: 16).isActive = true
        PassTf.leftAnchor.constraint(equalTo: OpenScreen.leftAnchor).isActive = true
        PassTf.trailingAnchor.constraint(equalTo: OpenScreen.trailingAnchor, constant: -40).isActive = true
        
    }
    
    private func setUpConstraintsForeyeBtn(){
        eyeBtn.widthAnchor.constraint(equalToConstant: 28).isActive = true
        eyeBtn.heightAnchor.constraint(equalToConstant: 28).isActive = true
        eyeBtn.topAnchor.constraint(equalTo: PassLbl.bottomAnchor, constant: 18).isActive = true
        eyeBtn.trailingAnchor.constraint(equalTo: OpenScreen.trailingAnchor).isActive = true
        
    }
    
    
    
    
    private func setUpConstraintsForConLbl(){
        ConLbl.widthAnchor.constraint(equalToConstant: 382).isActive = true
        ConLbl.heightAnchor.constraint(equalToConstant: 22).isActive = true
        ConLbl.topAnchor.constraint(equalTo: PassTf.bottomAnchor, constant: 33).isActive = true
        ConLbl.leftAnchor.constraint(equalTo: OpenScreen.leftAnchor).isActive = true
    }
    private func setupConstraintsForDivider(){
        divider.backgroundColor = .orange
        divider.translatesAutoresizingMaskIntoConstraints = false
        divider.topAnchor.constraint(equalTo: PassTf.bottomAnchor).isActive = true
        divider.leadingAnchor.constraint(equalTo: OpenScreen.leadingAnchor).isActive = true
        divider.trailingAnchor.constraint(equalTo: OpenScreen.trailingAnchor).isActive = true
        divider.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    private func setUpConstraintsForPassTf2(){
        PassTf2.widthAnchor.constraint(equalToConstant: 342).isActive = true
        PassTf2.heightAnchor.constraint(equalToConstant: 32).isActive = true
        PassTf2.topAnchor.constraint(equalTo: ConLbl.bottomAnchor, constant: 16).isActive = true
        PassTf2.leftAnchor.constraint(equalTo: OpenScreen.leftAnchor).isActive = true
        PassTf2.trailingAnchor.constraint(equalTo: OpenScreen.trailingAnchor, constant: -40).isActive = true
        
    }
    private func setupConstraintsForDivider2(){
        divider2.backgroundColor = .orange
        divider2.translatesAutoresizingMaskIntoConstraints = false
        divider2.topAnchor.constraint(equalTo: PassTf2.bottomAnchor).isActive = true
        divider2.leadingAnchor.constraint(equalTo: OpenScreen.leadingAnchor).isActive = true
        divider2.trailingAnchor.constraint(equalTo: OpenScreen.trailingAnchor).isActive = true
        divider2.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    private func setUpConstraintsForBoxBtn(){
        BoxBtn.widthAnchor.constraint(equalToConstant: 24).isActive = true
        BoxBtn.heightAnchor.constraint(equalToConstant: 24).isActive = true
        BoxBtn.topAnchor.constraint(equalTo: divider2.bottomAnchor,constant: 24).isActive = true
        BoxBtn.leadingAnchor.constraint(equalTo: OpenScreen.leadingAnchor).isActive = true
        BoxBtn.trailingAnchor.constraint(equalTo: OpenScreen.trailingAnchor,constant: -322).isActive = true
        BoxBtn.addTarget(self, action: #selector(checkboxTapped), for: .touchUpInside)
    }
    @objc func checkboxTapped() {
        BoxBtn.isSelected.toggle()
    }
    private func setUpConstraintsForRemLbl(){
        RemLbl.widthAnchor.constraint(equalToConstant: 382).isActive = true
        RemLbl.heightAnchor.constraint(equalToConstant: 22).isActive = true
        RemLbl.topAnchor.constraint(equalTo: divider2.bottomAnchor, constant: 24).isActive = true
        RemLbl.leftAnchor.constraint(equalTo: BoxBtn.leftAnchor,constant: 30).isActive = true
    }
    private func setUpConstraintsForeyeBtn2(){
        eyeBtn2.widthAnchor.constraint(equalToConstant: 28).isActive = true
        eyeBtn2.heightAnchor.constraint(equalToConstant: 28).isActive = true
        eyeBtn2.topAnchor.constraint(equalTo: ConLbl.bottomAnchor, constant: 18).isActive = true
        eyeBtn2.trailingAnchor.constraint(equalTo: OpenScreen.trailingAnchor).isActive = true
        
    }
    
    private func setUpConstraintsConBtn(){
        ConBtn.widthAnchor.constraint(equalToConstant: 350).isActive = true
        ConBtn.heightAnchor.constraint(equalToConstant: 45).isActive = true
        ConBtn.bottomAnchor.constraint(equalTo: RemLbl.bottomAnchor, constant: 330).isActive = true
        ConBtn.centerXAnchor.constraint(equalTo: OpenScreen.centerXAnchor).isActive = true
        ConBtn.addTarget(self, action: #selector(continueTappedBtn), for: .touchUpInside)
    }
    
    @objc func continueTappedBtn(_ sender: UIButton) {
        var shouldNavigate = true
        
        if PassTf.text?.isEmpty ?? true {
           
            shouldNavigate = false
        }
        
        if PassTf2.text?.isEmpty ?? true {
            
            shouldNavigate = false
        }
        
        if shouldNavigate {
            let vc = NotificationViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}


    





//
//  MovieListTableViewController.swift
//  MovieShoppingList
//
//  Created by Josh & Erica on 2/9/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController, MovieButtonTableViewCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Add a movie", message: "Enter the name of the movie you want to watch below:", preferredStyle: .alert)
        
        var movieTtitleTextField: UITextField?
        
        alertController.addTextField { (textfield) in
            movieTtitleTextField = textfield
        }
        
        
        let submitAction = UIAlertAction(title: "Submit", style: .default) { (_) in
            
            guard let title = movieTtitleTextField?.text else { return }
            
            MovieController.sharedController.createMovieWith(title: title)
            
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(submitAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MovieController.sharedController.movies.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else { return  UITableViewCell() }
        
        let movie = MovieController.sharedController.movies[indexPath.row]
        
        cell.movie = movie
        cell.delegate = self
        
        return cell
    }
    
    func movieCellButtontapped(sender: MovieTableViewCell) {
        guard let movie = sender.movie, let indexPath = tableView.indexPath(for: sender) else { return }
        
        MovieController.sharedController.toggleHasViewedFor(movie: movie)
        
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            
            let movie = MovieController.sharedController.movies[indexPath.row]
            
            MovieController.sharedController.delete(movie: movie)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
}

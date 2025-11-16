import SwiftUI

struct Clicker{
    var Name: String
    var DefaultPrice: Double
    var PriceAdditionnal: Double
    var TVA: Double
    var AddsAtRevClick: Double
    var Description: String
    var Quantity: Int
}
var CodeLine: Clicker = Clicker(Name: "Ligne de code", DefaultPrice: 0.1, PriceAdditionnal: 1, TVA: 0.2, AddsAtRevClick: 0.05, Description: "une ligne de code qui vous donne de l'argent, comme ça !", Quantity: 0)
// Nouveaux objets intermédiaires
var CodeEditor: Clicker = Clicker(Name: "Éditeur de code", DefaultPrice: 50, PriceAdditionnal: 5, TVA: 1, AddsAtRevClick: 0.1, Description: "Un éditeur de code qui facilite l'écriture de code.", Quantity: 0)

var Debugger: Clicker = Clicker(Name: "Débogueur", DefaultPrice: 200, PriceAdditionnal: 20, TVA: 4, AddsAtRevClick: 0.2, Description: "Un outil pour trouver et corriger les erreurs dans le code.", Quantity: 0)

var SoftwareLicense: Clicker = Clicker(Name: "Licence de logiciel", DefaultPrice: 500, PriceAdditionnal: 50, TVA: 10, AddsAtRevClick: 0.5, Description: "Une licence pour utiliser des logiciels professionnels.", Quantity: 0)

var CloudStorage: Clicker = Clicker(Name: "Stockage Cloud", DefaultPrice: 1000, PriceAdditionnal: 100, TVA: 20, AddsAtRevClick: 1, Description: "Un espace de stockage en ligne pour vos projets.", Quantity: 0)

var APIAccess: Clicker = Clicker(Name: "Accès API", DefaultPrice: 5000, PriceAdditionnal: 500, TVA: 100, AddsAtRevClick: 5, Description: "Accès à des API pour intégrer des fonctionnalités avancées.", Quantity: 0)

var TrainingData: Clicker = Clicker(Name: "Données d'entraînement", DefaultPrice: 20000, PriceAdditionnal: 2000, TVA: 400, AddsAtRevClick: 20, Description: "Données pour entraîner des modèles d'IA.", Quantity: 0)

var VirtualMachine: Clicker = Clicker(Name: "Machine virtuelle", DefaultPrice: 100000, PriceAdditionnal: 10000, TVA: 2000, AddsAtRevClick: 100, Description: "Une machine virtuelle pour tester des applications.", Quantity: 0)

var DevOpsTool: Clicker = Clicker(Name: "Outil DevOps", DefaultPrice: 500000, PriceAdditionnal: 50000, TVA: 10000, AddsAtRevClick: 500, Description: "Un outil pour automatiser le développement et le déploiement.", Quantity: 0)

var PC: Clicker = Clicker(Name: "PC", DefaultPrice: 100, PriceAdditionnal: 10, TVA: 2, AddsAtRevClick: 0.5, Description: "Un bon ordi personnel, qui fait de la revente de logiciels.", Quantity: 0)

var GraphicCard: Clicker = Clicker(Name: "Carte graphique", DefaultPrice: 1200, PriceAdditionnal: 100, TVA: 20, AddsAtRevClick: 1, Description: "améliore votre qualité d'image logiciel.", Quantity: 0)

var Coder: Clicker = Clicker(Name: "Codeur", DefaultPrice: 10000, PriceAdditionnal: 1000, TVA: 200, AddsAtRevClick: 50, Description: "Qui tape des touches de clavier rapidement ? C'est lui !", Quantity: 0)

var PCTower: Clicker = Clicker(Name: "Tour de bureau", DefaultPrice: 100000, PriceAdditionnal: 1000, TVA: 2000, AddsAtRevClick: 500, Description: "Un peu comme un serveur, mais plus léger.", Quantity: 0)

var SwiftConsole: Clicker = Clicker(Name: "Console de développement Swift", DefaultPrice: 1000000, PriceAdditionnal: 100000, TVA: 20000, AddsAtRevClick: 1000, Description: "Une console de développement Swift, parfaite pour les développeurs de Swift.", Quantity: 0)

var EthicHacker: Clicker = Clicker(Name: "Hacker éthique", DefaultPrice: 10000000, PriceAdditionnal: 1000000, TVA: 200000, AddsAtRevClick: 2500, Description: "Un hacker qui utilise ses compétences pour résoudre des problèmes de sécurité.", Quantity: 0)

var IA: Clicker = Clicker(Name: "IA", DefaultPrice: 1000000000, PriceAdditionnal: 10000000, TVA: 2000000, AddsAtRevClick: 5000, Description: "Une IA qui peut apprendre et résoudre des problèmes complexes.", Quantity: 0)

var QuantumComputer: Clicker = Clicker(Name: "Ordinateur quantique", DefaultPrice: 1000000000000, PriceAdditionnal: 100000000, TVA: 20000000, AddsAtRevClick: 5000000, Description: "Un ordinateur quantique, capable de calculer à la vitesse de l'intrication quantique.", Quantity: 100)

var SuperCalculator: Clicker = Clicker(Name: "Supercalculateur", DefaultPrice: 500000000000, PriceAdditionnal: 1000000000, TVA: 200000000, AddsAtRevClick: 50000000, Description: "Un supercalculateur, capable de résoudre des problèmes complexes en un clin d'œil.", Quantity: 0)

var InfinityStone: Clicker = Clicker(Name: "Pierre de l'infini", DefaultPrice: 10000000000000, PriceAdditionnal: 10000000000, TVA: 2000000000, AddsAtRevClick: 500000000, Description: "Un pierre de l'infini, capable de faire les plus grands codes.", Quantity: 0)
var TextEditor: Clicker = Clicker(Name: "Éditeur de texte", DefaultPrice: 10, PriceAdditionnal: 1, TVA: 0.2, AddsAtRevClick: 0.02, Description: "Un éditeur de texte simple pour écrire des notes.", Quantity: 0)

var VersionControl: Clicker = Clicker(Name: "Contrôle de version", DefaultPrice: 30, PriceAdditionnal: 3, TVA: 0.6, AddsAtRevClick: 0.05, Description: "Un système pour gérer les versions de votre code.", Quantity: 0)

var CodeSnippetLibrary: Clicker = Clicker(Name: "Bibliothèque de snippets", DefaultPrice: 70, PriceAdditionnal: 7, TVA: 1.4, AddsAtRevClick: 0.1, Description: "Une collection de snippets de code réutilisables.", Quantity: 0)

var OnlineCourse: Clicker = Clicker(Name: "Cours en ligne", DefaultPrice: 150, PriceAdditionnal: 15, TVA: 3, AddsAtRevClick: 0.2, Description: "Un cours pour apprendre de nouvelles compétences en programmation.", Quantity: 0)

var CodeReviewService: Clicker = Clicker(Name: "Service de révision de code", DefaultPrice: 300, PriceAdditionnal: 30, TVA: 6, AddsAtRevClick: 0.5, Description: "Un service pour faire réviser votre code par des experts.", Quantity: 0)

var WebHosting: Clicker = Clicker(Name: "Hébergement web", DefaultPrice: 600, PriceAdditionnal: 60, TVA: 12, AddsAtRevClick: 1, Description: "Un service pour héberger vos sites web.", Quantity: 0)

var Database: Clicker = Clicker(Name: "Base de données", DefaultPrice: 1500, PriceAdditionnal: 120, TVA: 24, AddsAtRevClick: 2, Description: "Une base de données pour stocker vos informations.", Quantity: 0)

var APIIntegration: Clicker = Clicker(Name: "Intégration API", DefaultPrice: 2400, PriceAdditionnal: 240, TVA: 48, AddsAtRevClick: 4, Description: "Intégration d'API pour des fonctionnalités avancées.", Quantity: 0)

var MobileApp: Clicker = Clicker(Name: "Application mobile", DefaultPrice: 4800, PriceAdditionnal: 480, TVA: 96, AddsAtRevClick: 8, Description: "Une application mobile pour vos utilisateurs.", Quantity: 0)

var GameDevelopmentKit: Clicker = Clicker(Name: "Kit de développement de jeux", DefaultPrice: 9600, PriceAdditionnal: 960, TVA: 192, AddsAtRevClick: 16, Description: "Un kit pour développer des jeux vidéo.", Quantity: 0)

var CloudComputing: Clicker = Clicker(Name: "Cloud informatique", DefaultPrice: 19200, PriceAdditionnal: 1920, TVA: 384, AddsAtRevClick: 32, Description: "Accès à des ressources informatiques via le cloud.", Quantity: 0)

var BlockchainTechnology: Clicker = Clicker(Name: "Technologie blockchain", DefaultPrice: 38400, PriceAdditionnal: 3840, TVA: 768, AddsAtRevClick: 64, Description: "Utilisation de la blockchain pour des transactions sécurisées.", Quantity: 0)

var DataAnalytics: Clicker = Clicker(Name: "Analyse de données", DefaultPrice: 76800, PriceAdditionnal: 7680, TVA: 1536, AddsAtRevClick: 128, Description: "Outils pour analyser et visualiser des données.", Quantity: 0)

var MachineLearning: Clicker = Clicker(Name: "Apprentissage automatique", DefaultPrice: 153600, PriceAdditionnal: 15360, TVA: 30720, AddsAtRevClick: 256, Description: "Modèles d'apprentissage automatique pour des prédictions.", Quantity: 0)

var CyberSecurity: Clicker = Clicker(Name: "Cybersécurité", DefaultPrice: 307200, PriceAdditionnal: 30720, TVA: 61440, AddsAtRevClick: 512, Description: "Protection contre les menaces informatiques.", Quantity: 0)

var AllClickers: [Clicker] = [CodeLine, PC, Coder, PCTower, SwiftConsole, EthicHacker, IA, QuantumComputer, SuperCalculator, InfinityStone]



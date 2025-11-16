import SwiftUI

struct ClickersList: View{
    var body: some View{
        List{
            ClickerView(clickers: CodeLine)
            ClickerView(clickers: TextEditor)
            ClickerView(clickers: VersionControl)
            ClickerView(clickers: CodeEditor)
            ClickerView(clickers: CodeSnippetLibrary)
            ClickerView(clickers: PC)
            ClickerView(clickers: OnlineCourse)
            ClickerView(clickers: Debugger)
            ClickerView(clickers: CodeReviewService)
            ClickerView(clickers: SoftwareLicense)
            ClickerView(clickers: WebHosting)
            ClickerView(clickers: CloudStorage)
            ClickerView(clickers: GraphicCard)
            ClickerView(clickers: Database)
            ClickerView(clickers: APIIntegration)
            ClickerView(clickers: MobileApp)
            ClickerView(clickers: APIAccess)
            ClickerView(clickers: GameDevelopmentKit)
            ClickerView(clickers: Coder)
            ClickerView(clickers: MachineLearning)
            ClickerView(clickers: TrainingData)
            ClickerView(clickers: CloudComputing)
            ClickerView(clickers: BlockchainTechnology)
            ClickerView(clickers: VirtualMachine)
            ClickerView(clickers: PCTower)
            ClickerView(clickers: DevOpsTool)
            ClickerView(clickers: SwiftConsole)
            ClickerView(clickers: EthicHacker)
            ClickerView(clickers: IA)
            ClickerView(clickers: QuantumComputer)
            ClickerView(clickers: SuperCalculator)
            ClickerView(clickers: InfinityStone)
            AdPlacementView {
            }
        }
        .listStyle(PlainListStyle())
    }
}

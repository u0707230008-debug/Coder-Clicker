import SwiftUI

struct AdItem: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String?
    let background: Color
    let actionTitle: String?
    let action: (() -> Void)?
}
struct AchievementItem: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String?
    let background: Color
    let actionTitle: String?
    let action: (() -> Void)?
}
@Observable class AchievementManager {
    var items: [AchievementItem] = [
        AchievementItem(title: "l'histoire à deux balles", subtitle: "Obtenez 100$ en 30s", background: .blue.opacity(0.85), actionTitle: nil, action: nil),
        AchievementItem(title: "écran allumé", subtitle: "jouez pendant 2 minutes de plus !", background: .purple.opacity(0.85), actionTitle: "Ok", action: nil),
        AchievementItem(title: "Donnez votre avis", subtitle: "Votre avis nous aide beaucoup.", background: .orange.opacity(0.85), actionTitle: nil, action: nil), AchievementItem(title: "Bugs", subtitle: "Dites les bugs, cela est important!", background: .red.opacity(0.85), actionTitle: nil, action: nil)
    ]
    
    var isDismissed: Bool = false
    var currentIndex: Int = 0
    
    func next() {
        guard !items.isEmpty else { return }
        currentIndex = (currentIndex + 1) % items.count
    }
    
    func current() -> AchievementItem? {
        guard !items.isEmpty else { return nil }
        return items[currentIndex]
    }
    
    func dismiss() { isDismissed = true }
}
@Observable
final class AdManager {
    var items: [AdItem] = [
        AdItem(title: "Vous entrez dans la légende", subtitle: "Des jeux, des calendriers, des fiches Bristol numériques...codés par vous !", background: .blue.opacity(0.85), actionTitle: nil, action: nil),
        AdItem(title: "Oh, c'est de la camelote.", subtitle: "Allez-y, montrez de quoi vous êtes capable !", background: .purple.opacity(0.85), actionTitle: nil, action: nil),
        AdItem(title: "Notez l’app", subtitle: "Votre avis nous aide beaucoup.", background: .orange.opacity(0.85), actionTitle: nil, action: nil), AdItem(title: "Bugs", subtitle: "Dites les bugs, cela est important!", background: .red.opacity(0.85), actionTitle: nil, action: nil), AdItem(title: "Continuez !", subtitle: "Chaque minute rapporte plus.", background: .brown.opacity(0.85), actionTitle: nil, action: nil)
    ]

    var isDismissed: Bool = false
    var currentIndex: Int = 0

    func next() {
        guard !items.isEmpty else { return }
        currentIndex = (currentIndex + 1) % items.count
    }

    func current() -> AdItem? {
        guard !items.isEmpty else { return nil }
        return items[currentIndex]
    }

    func dismiss() { isDismissed = true }
}

struct AdBannerView: View {
    @State private var timer: Timer?
    @State private var isHovering = false

    @State private var manager: AdManager

    init(manager: AdManager = AdManager()) {
        _manager = State(initialValue: manager)
    }

    var body: some View {
        Group {
            if let ad = manager.current(), !manager.isDismissed {
                banner(ad: ad)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                    .onAppear(perform: start)
                    .onDisappear(perform: stop)
            }
        }
        .animation(.snappy, value: manager.currentIndex)
        .animation(.easeInOut, value: manager.isDismissed)
    }

    @ViewBuilder
    private func banner(ad: AdItem) -> some View {
        HStack(spacing: 12) {
            VStack(alignment: .leading, spacing: 4) {
                Text(ad.title)
                    .font(.headline)
                    .foregroundStyle(.white)
                if let subtitle = ad.subtitle {
                    Text(subtitle)
                        .font(.subheadline)
                        .foregroundStyle(.white.opacity(0.9))
                }
            }
            Spacer(minLength: 8)
            if let actionTitle = ad.actionTitle {
                Button(actionTitle) {
                    ad.action?()
                }
                .buttonStyle(.borderedProminent)
                .tint(.white)
                .foregroundStyle(.black)
            }
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 10)
        .background(ad.background.blendMode(.plusLighter))
        .clipShape(RoundedRectangle(cornerRadius: 2, style: .continuous))
        .shadow(color: .black.opacity(0.15), radius: 8, x: 0, y: 4)
        .padding(.horizontal)
        .padding(.bottom)
        .onHover { hovering in
            isHovering = hovering
            if hovering { stop() } else { start() }
        }
    }

    private func start() {
        stop()
        timer = .scheduledTimer(withTimeInterval: 5.0, repeats: true) { _ in
            guard !isHovering, !manager.isDismissed else { return }
            withAnimation { manager.next() }
        }
    }

    private func stop() {
        timer?.invalidate()
        timer = nil
    }
}

struct AchievementBannerView: View {
    @State private var timer: Timer?
    @State private var isHovering = false
    
    @State private var manager: AdManager
    
    init(manager: AdManager = AdManager()) {
        _manager = State(initialValue: manager)
    }
    
    var body: some View {
        Group {
            if let ad = manager.current(), !manager.isDismissed {
                banner(ad: ad)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                    .onAppear(perform: start)
                    .onDisappear(perform: stop)
            }
        }
        .animation(.snappy, value: manager.currentIndex)
        .animation(.easeInOut, value: manager.isDismissed)
    }
    
    @ViewBuilder
    private func banner(ad: AdItem) -> some View {
        HStack(spacing: 12) {
            VStack(alignment: .leading, spacing: 4) {
                Text(ad.title)
                    .font(.headline)
                    .foregroundStyle(.white)
                if let subtitle = ad.subtitle {
                    Text(subtitle)
                        .font(.subheadline)
                        .foregroundStyle(.white.opacity(0.9))
                }
            }
            Spacer(minLength: 8)
            if let actionTitle = ad.actionTitle {
                Button(actionTitle) {
                    ad.action?()
                }
                .buttonStyle(.borderedProminent)
                .tint(.white)
                .foregroundStyle(.black)
            }
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 10)
        .background(ad.background.blendMode(.plusLighter))
        .clipShape(RoundedRectangle(cornerRadius: 2, style: .continuous))
        .shadow(color: .black.opacity(0.15), radius: 8, x: 0, y: 4)
        .padding(.horizontal)
        .padding(.bottom)
        .onHover { hovering in
            isHovering = hovering
            if hovering { stop() } else { start() }
        }
    }
    
    private func start() {
        stop()
        timer = .scheduledTimer(withTimeInterval: 5.0, repeats: true) { _ in
            guard !isHovering, !manager.isDismissed else { return }
            withAnimation { manager.next() }
        }
    }
    
    private func stop() {
        timer?.invalidate()
        timer = nil
    }
}
struct AdPlacementView<Content: View>: View {
    let content: Content
    var manager: AdManager

    init(manager: AdManager = AdManager(), @ViewBuilder content: () -> Content) {
        self.manager = manager
        self.content = content()
    }

    var body: some View {
        VStack(spacing: 0) {
            content
            AdBannerView(manager: manager)
        }
    }
}

#Preview("Ad banner demo") {
    AdPlacementView {
    }
}

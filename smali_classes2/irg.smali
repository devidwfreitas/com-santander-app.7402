.class Lirg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/Tracking;


# instance fields
.field final synthetic a:Lird;


# direct methods
.method constructor <init>(Lird;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lirg;->a:Lird;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configNotificationAction(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 659
    invoke-static {p1, p2}, Ljrq;->a(Ljava/lang/String;Z)V

    .line 660
    return-void
.end method

.method public menuConfigPanelAction()V
    .locals 0

    .prologue
    .line 644
    invoke-static {}, Ljrq;->c()V

    .line 645
    return-void
.end method

.method public menuNotificationsAction()V
    .locals 0

    .prologue
    .line 639
    invoke-static {}, Ljrq;->a()V

    .line 640
    return-void
.end method

.method public notificationDetailedBackAction()V
    .locals 0

    .prologue
    .line 654
    invoke-static {}, Ljrq;->b()V

    .line 655
    return-void
.end method

.method public notificationDetailedOptions()V
    .locals 2

    .prologue
    .line 681
    sget-object v0, Ljrq;->b:Ljava/lang/String;

    const-string v1, "MaisOpcoes"

    invoke-static {v0, v1}, Ljrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public notificationDetailedPopUpOptionCancel()V
    .locals 2

    .prologue
    .line 696
    sget-object v0, Ljrq;->c:Ljava/lang/String;

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Ljrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public notificationDetailedPopUpOptionDelete()V
    .locals 2

    .prologue
    .line 691
    sget-object v0, Ljrq;->c:Ljava/lang/String;

    const-string v1, "Excluir"

    invoke-static {v0, v1}, Ljrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public notificationDetailedPopUpOptionUnread()V
    .locals 2

    .prologue
    .line 686
    sget-object v0, Ljrq;->c:Ljava/lang/String;

    const-string v1, "MarcarNaoLida"

    invoke-static {v0, v1}, Ljrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public notificationTypeAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 649
    invoke-static {p1}, Ljrq;->a(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public swipeNotificationOptionDelete()V
    .locals 2

    .prologue
    .line 676
    sget-object v0, Ljrq;->a:Ljava/lang/String;

    const-string v1, "Excluir"

    invoke-static {v0, v1}, Ljrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public swipeNotificationOptionReadUnread(Z)V
    .locals 2

    .prologue
    .line 669
    if-eqz p1, :cond_0

    .line 670
    sget-object v0, Ljrq;->a:Ljava/lang/String;

    const-string v1, "MarcarNaoLida"

    invoke-static {v0, v1}, Ljrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_0
    return-void
.end method

.method public swipeNotificationOptions()V
    .locals 2

    .prologue
    .line 664
    sget-object v0, Ljrq;->a:Ljava/lang/String;

    const-string v1, "MaisOpcoes"

    invoke-static {v0, v1}, Ljrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public swipeNotificationPopUpOptionCancel()V
    .locals 2

    .prologue
    .line 706
    sget-object v0, Ljrq;->d:Ljava/lang/String;

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Ljrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public swipeNotificationPopUpOptionDelete()V
    .locals 2

    .prologue
    .line 701
    sget-object v0, Ljrq;->d:Ljava/lang/String;

    const-string v1, "Excluir"

    invoke-static {v0, v1}, Ljrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    return-void
.end method

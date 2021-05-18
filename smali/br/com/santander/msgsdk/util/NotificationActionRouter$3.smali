.class Lbr/com/santander/msgsdk/util/NotificationActionRouter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/util/NotificationActionRouter;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/util/NotificationActionRouter;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter$3;->this$0:Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter$3;->this$0:Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->finish()V

    .line 94
    return-void
.end method

.class Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$1;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 153
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$1;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->finish()V

    .line 154
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$1;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    invoke-static {v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->access$000(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 155
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$1;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->onBackPressed()V

    .line 157
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

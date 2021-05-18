.class Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$5;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    iput-object p2, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$5;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$5;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 235
    return-void
.end method

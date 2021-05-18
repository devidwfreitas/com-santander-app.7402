.class Lbr/com/santander/msgsdk/MSGSDK$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/MSGSDK;

.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/MSGSDK;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK$8;->this$0:Lbr/com/santander/msgsdk/MSGSDK;

    iput-object p2, p0, Lbr/com/santander/msgsdk/MSGSDK$8;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$8;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 509
    return-void
.end method

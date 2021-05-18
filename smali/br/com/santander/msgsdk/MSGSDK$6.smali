.class Lbr/com/santander/msgsdk/MSGSDK$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/MSGSDK;

.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/MSGSDK;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK$6;->this$0:Lbr/com/santander/msgsdk/MSGSDK;

    iput-object p2, p0, Lbr/com/santander/msgsdk/MSGSDK$6;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$6;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 489
    return-void
.end method

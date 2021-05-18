.class public Lasl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDialog;

.field final synthetic b:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;


# direct methods
.method public constructor <init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Landroid/support/v7/app/AppCompatDialog;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Lasl;->b:Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    iput-object p2, p0, Lasl;->a:Landroid/support/v7/app/AppCompatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lasl;->a:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDialog;->dismiss()V

    .line 975
    return-void
.end method

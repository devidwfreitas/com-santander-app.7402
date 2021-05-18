.class public Ljpo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Ljpo;->b:Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;

    iput-object p2, p0, Ljpo;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ljpo;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 115
    return-void
.end method

.class public Ljqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Ljqy;->a:Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Ljqy;->a:Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;

    iget-object v0, v0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->p()Liow;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Liow;->i(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Ljqy;->a:Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;->a(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;)V

    .line 132
    return-void
.end method

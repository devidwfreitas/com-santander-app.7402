.class public Lihd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lihd;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lihd;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    iget-object v1, p0, Lihd;->a:Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

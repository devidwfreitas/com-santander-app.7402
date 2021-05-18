.class public Ljmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Ljmc;->a:Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Ljmc;->a:Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;

    invoke-static {v0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a(Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;)Ljmm;

    move-result-object v0

    invoke-interface {v0}, Ljmm;->f()V

    .line 208
    return-void
.end method

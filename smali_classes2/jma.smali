.class public Ljma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Ljma;->b:Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;

    iput-object p2, p0, Ljma;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Ljma;->b:Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;

    invoke-static {v0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a(Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;)Ljmm;

    move-result-object v0

    iget-object v1, p0, Ljma;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljmm;->b(Ljava/lang/String;)V

    .line 165
    return-void
.end method

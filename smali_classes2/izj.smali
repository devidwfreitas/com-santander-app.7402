.class public Lizj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lizj;->a:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 133
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 134
    return-void
.end method

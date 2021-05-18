.class public Lizb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lizb;->a:Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoAtmInstrucoesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 100
    return-void
.end method

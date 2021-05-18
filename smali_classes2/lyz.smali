.class Llyz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llyy;


# direct methods
.method constructor <init>(Llyy;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Llyz;->a:Llyy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 142
    const-string v0, "Seguros_Sinistro_Acionar_ContarSobreAcontecido_Acao"

    const-string v1, "GravarAudio"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Llyz;->a:Llyy;

    invoke-static {v0}, Llyy;->a(Llyy;)V

    .line 144
    return-void
.end method

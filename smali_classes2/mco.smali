.class Lmco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmcn;


# direct methods
.method constructor <init>(Lmcn;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lmco;->a:Lmcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lmco;->a:Lmcn;

    iget-object v0, v0, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    iget-object v1, p0, Lmco;->a:Lmcn;

    iget-object v1, v1, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->b(Lcom/santander/app/seguros/ui/widgets/SliderValue;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->c(Lcom/santander/app/seguros/ui/widgets/SliderValue;Ljava/lang/Double;)V

    .line 151
    return-void
.end method

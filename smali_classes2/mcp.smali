.class Lmcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Double;

.field final synthetic b:Lmcn;


# direct methods
.method constructor <init>(Lmcn;Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lmcp;->b:Lmcn;

    iput-object p2, p0, Lmcp;->a:Ljava/lang/Double;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lmcp;->b:Lmcn;

    iget-object v0, v0, Lmcn;->a:Lcom/santander/app/seguros/ui/widgets/SliderValue;

    iget-object v1, p0, Lmcp;->a:Ljava/lang/Double;

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SliderValue;->c(Lcom/santander/app/seguros/ui/widgets/SliderValue;Ljava/lang/Double;)V

    .line 159
    return-void
.end method

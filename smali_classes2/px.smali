.class Lpx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lot;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 1268
    iput-object p1, p0, Lpx;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 6

    .prologue
    .line 1271
    check-cast p1, Lox;

    invoke-virtual {p1}, Lox;->a()Low;

    move-result-object v0

    invoke-virtual {v0}, Low;->b()Loy;

    move-result-object v0

    invoke-virtual {v0}, Loy;->c()Ljava/lang/String;

    move-result-object v0

    .line 1272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Laat;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " do CDI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1274
    iget-object v1, p0, Lpx;->a:Lpc;

    invoke-static {v1}, Lpc;->i(Lpc;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    iget-object v0, p0, Lpx;->a:Lpc;

    invoke-static {v0}, Lpc;->i(Lpc;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1277
    iget-object v0, p0, Lpx;->a:Lpc;

    invoke-static {v0}, Lpc;->ao(Lpc;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 1279
    iget-object v0, p0, Lpx;->a:Lpc;

    iget-object v1, p0, Lpx;->a:Lpc;

    invoke-static {v1}, Lpc;->ap(Lpc;)Z

    move-result v1

    invoke-static {v0, v1}, Lpc;->b(Lpc;Z)V

    .line 1280
    return-void
.end method

.method public a(Laby;)V
    .locals 3

    .prologue
    .line 1284
    iget-object v0, p0, Lpx;->a:Lpc;

    invoke-static {v0}, Lpc;->ao(Lpc;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 1285
    iget-object v0, p0, Lpx;->a:Lpc;

    invoke-static {v0}, Lpc;->i(Lpc;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1286
    const-string v0, "PROFITABILITY SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Laby;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Laby;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    return-void
.end method

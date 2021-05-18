.class Llza;
.super Lmgf;
.source "SourceFile"


# instance fields
.field final synthetic a:Llyy;


# direct methods
.method constructor <init>(Llyy;JJ)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Llza;->a:Llyy;

    invoke-direct {p0, p2, p3, p4, p5}, Lmgf;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Llza;->a:Llyy;

    invoke-static {v0}, Llyy;->d(Llyy;)V

    .line 210
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Llza;->a:Llyy;

    invoke-static {v0}, Llyy;->c(Llyy;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llza;->a:Llyy;

    invoke-static {v1}, Llyy;->b(Llyy;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.class final Leya;
.super Lexz;
.source "SourceFile"


# static fields
.field private static final a:I = 0x5


# direct methods
.method constructor <init>(Lets;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lexz;-><init>(Lets;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {p0}, Leya;->c()Leyj;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Leyj;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

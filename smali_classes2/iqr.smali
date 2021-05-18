.class Liqr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Liqq;


# direct methods
.method constructor <init>(Liqq;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Liqr;->a:Liqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Liqr;->a:Liqq;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Liqq;->a(Liqq;Ljava/lang/String;)Ljava/lang/String;

    .line 912
    return-void
.end method

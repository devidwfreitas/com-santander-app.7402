.class public Lox;
.super Labv;
.source "SourceFile"


# instance fields
.field private a:Low;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "product"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Labv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Low;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lox;->a:Low;

    return-object v0
.end method

.method public a(Low;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lox;->a:Low;

    return-void
.end method

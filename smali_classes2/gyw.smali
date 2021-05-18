.class public Lgyw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "table1"

.field public static final b:Ljava/lang/String; = "_id"

.field public static final c:Ljava/lang/String; = "content"

.field public static final d:Ljava/lang/String; = "content2"

.field public static final e:Ljava/lang/String; = "create table table1( _id integer primary key, content text not null, content2 text);"

.field public static final f:Ljava/lang/String; = "ALTER TABLE table1 ADD COLUMN content2 text;"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

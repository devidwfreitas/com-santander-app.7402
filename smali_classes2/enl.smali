.class public final Lenl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lekp;


# instance fields
.field private final a:Lela;

.field private final b:Lejl;

.field private final c:Lelp;

.field private final d:Lenb;


# direct methods
.method public constructor <init>(Lela;Lejl;Lelp;Lenb;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lenl;->a:Lela;

    .line 57
    iput-object p2, p0, Lenl;->b:Lejl;

    .line 58
    iput-object p3, p0, Lenl;->c:Lelp;

    .line 59
    iput-object p4, p0, Lenl;->d:Lenb;

    .line 60
    return-void
.end method

.method private a(Lejm;Ljava/lang/reflect/Field;Ljava/lang/String;Lepn;ZZ)Leno;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lejm;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lepn",
            "<*>;ZZ)",
            "Leno;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p4}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lemm;->a(Ljava/lang/reflect/Type;)Z

    move-result v10

    .line 108
    const-class v0, Lekr;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lekr;

    .line 109
    const/4 v7, 0x0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lenl;->d:Lenb;

    iget-object v2, p0, Lenl;->a:Lela;

    invoke-virtual {v1, v2, p1, p4, v0}, Lenb;->a(Lela;Lejm;Lepn;Lekr;)Lekn;

    move-result-object v7

    .line 114
    :cond_0
    if-eqz v7, :cond_2

    const/4 v6, 0x1

    .line 115
    :goto_0
    if-nez v7, :cond_1

    invoke-virtual {p1, p4}, Lejm;->a(Lepn;)Lekn;

    move-result-object v7

    .line 118
    :cond_1
    new-instance v0, Lenm;

    move-object v1, p0

    move-object v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p2

    move-object v8, p1

    move-object v9, p4

    invoke-direct/range {v0 .. v10}, Lenm;-><init>(Lenl;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLekn;Lejm;Lepn;Z)V

    return-object v0

    .line 114
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-class v0, Leks;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Leks;

    .line 73
    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lenl;->b:Lejl;

    invoke-interface {v0, p1}, Lejl;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    invoke-interface {v0}, Leks;->a()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-interface {v0}, Leks;->b()[Ljava/lang/String;

    move-result-object v2

    .line 80
    array-length v0, v2

    if-nez v0, :cond_2

    .line 81
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 87
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a(Lejm;Lepn;Ljava/lang/Class;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lejm;",
            "Lepn",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Leno;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 144
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v10

    .line 177
    :goto_0
    return-object v1

    .line 148
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lepn;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 149
    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_6

    .line 150
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .line 151
    array-length v14, v13

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v14, :cond_5

    aget-object v3, v13, v11

    .line 152
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lenl;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    .line 153
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lenl;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v7

    .line 154
    if-nez v6, :cond_2

    if-nez v7, :cond_2

    .line 151
    :cond_1
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_2

    .line 157
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Lepn;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lekw;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v15

    .line 159
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lenl;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v16

    .line 160
    const/4 v8, 0x0

    .line 161
    const/4 v1, 0x0

    move v9, v1

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 162
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 163
    if-eqz v9, :cond_3

    const/4 v6, 0x0

    .line 165
    :cond_3
    invoke-static {v15}, Lepn;->get(Ljava/lang/reflect/Type;)Lepn;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 164
    invoke-direct/range {v1 .. v7}, Lenl;->a(Lejm;Ljava/lang/reflect/Field;Ljava/lang/String;Lepn;ZZ)Leno;

    move-result-object v1

    .line 166
    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leno;

    .line 167
    if-nez v8, :cond_7

    .line 161
    :goto_4
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-object v8, v1

    goto :goto_3

    .line 169
    :cond_4
    if-eqz v8, :cond_1

    .line 170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Leno;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lepn;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lekw;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lepn;->get(Ljava/lang/reflect/Type;)Lepn;

    move-result-object p2

    .line 175
    invoke-virtual/range {p2 .. p2}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_1

    :cond_6
    move-object v1, v10

    .line 177
    goto/16 :goto_0

    :cond_7
    move-object v1, v8

    goto :goto_4
.end method

.method static a(Ljava/lang/reflect/Field;ZLelp;)Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lelp;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lelp;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lejm;Lepn;)Lekn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lejm;",
            "Lepn",
            "<TT;>;)",
            "Lekn",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p2}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 95
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lenl;->a:Lela;

    invoke-virtual {v0, p2}, Lela;->a(Lepn;)Leml;

    move-result-object v2

    .line 100
    new-instance v0, Lenn;

    invoke-direct {p0, p1, p2, v1}, Lenl;->a(Lejm;Lepn;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lenn;-><init>(Leml;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lenl;->c:Lelp;

    invoke-static {p1, p2, v0}, Lenl;->a(Ljava/lang/reflect/Field;ZLelp;)Z

    move-result v0

    return v0
.end method

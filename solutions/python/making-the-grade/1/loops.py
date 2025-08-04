"""Functions for organizing and calculating student exam scores."""


def round_scores(student_scores: list[float]) -> list[int]:
    """Round all provided student scores.

    :param student_scores: list - float or int of student exam scores.
    :return: list - student scores *rounded* to nearest integer value.
    """
    result: list[int] = []
    for score in student_scores:
        result.append(round(score))
    return result


def count_failed_students(student_scores: list[int]) -> int:
    """Count the number of failing students out of the group provided.

    :param student_scores: list - containing int student scores.
    :return: int - count of student scores at or below 40.
    """
    number_of_failed_students = 0
    fail_score = 40
    for score in student_scores:
        if score <= fail_score:
            number_of_failed_students += 1
    return number_of_failed_students


def above_threshold(student_scores: list[int], threshold: int) -> list[int]:
    """Determine how many of the provided student scores were 'the best' based on the provided threshold.

    :param student_scores: list - of integer scores.
    :param threshold: int - threshold to cross to be the "best" score.
    :return: list - of integer scores that are at or above the "best" threshold.
    """

    return [score for score in student_scores if score >= threshold]


def letter_grades(highest: int) -> list[int]:
    """Create a list of grade thresholds based on the provided highest grade.

    :param highest: int - value of highest exam score.
    :return: list - of lower threshold scores for each D-A letter grade interval.
            For example, where the highest score is 100, and failing is <= 40,
            The result would be [41, 56, 71, 86]:

            41 <= "D" <= 55
            56 <= "C" <= 70
            71 <= "B" <= 85
            86 <= "A" <= 100
    """

    step = int((highest - 40)/4)
    number_of_letter_grades = 4
    lower_threshold: list[int] = []
    for score in range(41,highest,step):
        if len(lower_threshold) == number_of_letter_grades:
            break
        lower_threshold.append(score)
    return lower_threshold




def student_ranking(student_scores: list[int], student_names: list[str])-> list[str]:
    """Organize the student's rank, name, and grade information in ascending order.

    :param student_scores: list - of scores in descending order.
    :param student_names: list - of string names by exam score in descending order.
    :return: list - of strings in format ["<rank>. <student name>: <score>"].
    """

    ranking = []
    number_of_students = len(student_names)
    for index in range(0,number_of_students):
        rank = index + 1
        student_name = student_names[index]
        score = student_scores[index]
        ranking_string = f"{rank}. {student_name}: {score}"
        ranking.append(ranking_string)
    return ranking


def perfect_score(student_info):
    """Create a list that contains the name and grade of the first student to make a perfect score on the exam.

    :param student_info: list - of [<student name>, <score>] lists.
    :return: list - first `[<student name>, 100]` or `[]` if no student score of 100 is found.
    """

    perfect = 100
    for student in student_info:
        if student[1] == perfect:
            return student
    return []
